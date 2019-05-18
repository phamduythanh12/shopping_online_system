/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.jv27_spring_project_final.controller;

import com.mycompany.jv27_spring_project_final.Uitll.AccountUntill;
import com.mycompany.jv27_spring_project_final.entities.AccountEntity;
import com.mycompany.jv27_spring_project_final.entities.AccountRoleEntity;
import com.mycompany.jv27_spring_project_final.entities.OrderDetailEntity;
import com.mycompany.jv27_spring_project_final.entities.OrderEntity;
import com.mycompany.jv27_spring_project_final.entities.ProductEntity;
import com.mycompany.jv27_spring_project_final.entities.enums.Status;
import com.mycompany.jv27_spring_project_final.service.AccountRoleService;
import com.mycompany.jv27_spring_project_final.service.AccountService;
import com.mycompany.jv27_spring_project_final.service.OrderDetailService;
import com.mycompany.jv27_spring_project_final.service.OrderService;
import com.mycompany.jv27_spring_project_final.service.ProductService;
import com.mycompany.jv27_spring_project_final.service.ProductTypeService;
import com.mycompany.jv27_spring_project_final.service.ProviderService;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author AnhLe
 */
@Controller
public class HomeController {

    private List<OrderDetailEntity> cartItems = new ArrayList<>();
    @Autowired
    private ProductService productService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private ProductTypeService productTypeService;
    @Autowired
    private ProviderService providerService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderDetailService orderDetailService;
    @Autowired
    private JavaMailSender mailSender;
    @Autowired
    private AccountRoleService accountRoleService;

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String homePage(Model model, HttpSession session,
            @RequestParam(name = "page", required = false, defaultValue = "1") int page,
            @RequestParam(name = "status", required = false, defaultValue = "0") int status,
            @RequestParam(name = "email", required = false, defaultValue = "") String email) {
        model.addAttribute("message", "Spring Security");
        Pageable pageRequest = new PageRequest(page - 1, 6);
        model.addAttribute("sonmois", productService.getProducts(pageRequest));
        session.setAttribute("producttypes", productTypeService.getProductTypes());
        session.setAttribute("providers", providerService.getProviders());
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartNum", cartItems.size());
        if (!email.equals("")) {
            ActiveAccount(email);
            model.addAttribute("acction", "Bạn đã Active tài khoản thành công!Hãy LOGIN để sử dụng!");
        }
        return "home";
    }

    public void ActiveAccount(String email) {
        AccountEntity accountEntity = accountService.findAccountByEmail(email);
        accountEntity.setStatus(Status.Active);
        accountService.saveAccount(accountEntity);
    }

    @RequestMapping("/login")
    public String loginPage(Model model,
            @RequestParam(value = "error", required = false) String error) {
        if (error != null && !error.isEmpty()) {
            model.addAttribute("message", "username or password incorrect.");
        }
        return "login";
    }

    @RequestMapping("/detail-form/{chamsocda.id}")
    public String detailProduct(Model model,
            @PathVariable(value = "chamsocda.id") int productId) {
        model.addAttribute("product", productService.getProduct(productId));
        model.addAttribute("sonmois", productService.searchProductTypes(1));
        return "detailproduct";
    }

    @RequestMapping("/cart-form/{id}")
    public String addCart(Model model, HttpSession session,
            @PathVariable(value = "id") int productId) {
        List<OrderDetailEntity> cartItems = (List<OrderDetailEntity>) session.getAttribute("myCartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }
        ProductEntity product = productService.getProduct(productId);
        // System.out.println("------------------->>>>>>>>>>"+product.getName());
        if (product.getName() != null) {
            if (containsKey(cartItems, productId)) {

                for (OrderDetailEntity orderDetailEntity : cartItems) {
                    if (orderDetailEntity.getProduct().getId() == productId) {
                        orderDetailEntity.setQuantity(orderDetailEntity.getQuantity() + 1);
                        orderDetailEntity.setTotalPrice(orderDetailEntity.getQuantity() * orderDetailEntity.getProduct().getPrice());
                    }
                }
            } else {
                OrderDetailEntity item = new OrderDetailEntity();
                item.setProduct(product);
                item.setQuantity(1);
                item.setTotalPrice(item.getQuantity() * item.getProduct().getPrice());
                cartItems.add(item);
            }
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartNum", cartItems.size());
        return "redirect:/cart-detail";
    }

    public double totalPrice(List<OrderDetailEntity> cartItems) {
        int count = 0;
        for (OrderDetailEntity list : cartItems) {
            count += list.getProduct().getPrice() * list.getQuantity();
        }
        return count;
    }

    public Boolean containsKey(List<OrderDetailEntity> mycart, int id) {
        for (OrderDetailEntity orderDetailEntity : mycart) {
            if (orderDetailEntity.getProduct().getId() == id) {
                return true;
            }
        }
        return false;
    }

    @RequestMapping("/delete-cart/{id}")
    public String deleteOrder(Model model, HttpSession session,
            @PathVariable(value = "id") int productId) {
        List<OrderDetailEntity> cartItems = (List<OrderDetailEntity>) session.getAttribute("myCartItems");
        for (OrderDetailEntity orderDetailEntity : cartItems) {
            if (orderDetailEntity.getProduct().getId() == productId) {
                cartItems.remove(orderDetailEntity);
                break;
            }
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartNum", cartItems.size());
        return "redirect:/home";
    }

    @RequestMapping("/delete1/{id}")
    public String deleteOrderFromCartDetail(Model model, HttpSession session,
            @PathVariable(value = "id") int productId) {

        List<OrderDetailEntity> cartItems = (List<OrderDetailEntity>) session.getAttribute("myCartItems");
        for (OrderDetailEntity orderDetailEntity : cartItems) {
            if (orderDetailEntity.getProduct().getId() == productId) {
                cartItems.remove(orderDetailEntity);
                break;
            }
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartNum", cartItems.size());
        return "redirect:/cart-detail";
    }

    @RequestMapping("/deletefromcheckout")
    public String deleteFromCheckout(@RequestParam(value = "productId") int productId, HttpSession session) {
        List<OrderDetailEntity> cartItems = (List<OrderDetailEntity>) session.getAttribute("myCartItems");
        for (int i = 0; i < cartItems.size(); i++) {
            if (cartItems.get(i).getProduct().getId() == productId) {
                cartItems.remove(i);
                break;
            }
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartNum", cartItems.size());
        if (cartItems.size() != 0) {
            return "redirect:/thanhtoan";
        } else {
            return "redirect:/home";
        }
    }

    @RequestMapping("/update-form")
    public String updateOrderFromCartDetail(Model model, HttpSession session,
            @RequestParam("productId") int id, @RequestParam("quantity") int quantity) {
        List<OrderDetailEntity> cartItems = (List<OrderDetailEntity>) session.getAttribute("myCartItems");
        for (int i = 0; i < cartItems.size(); i++) {
            OrderDetailEntity od = cartItems.get(i);
            if (od.getProduct().getId() == id) {
                od.setQuantity(quantity);
                od.setTotalPrice(od.getQuantity() * od.getProduct().getPrice());
                cartItems.set(i, od);
                break;
            }
        }
        session.setAttribute("myCartItems", cartItems);
        session.setAttribute("myCartTotal", totalPrice(cartItems));
        session.setAttribute("myCartNum", cartItems.size());
        return "redirect:/cart-detail";

    }

    @RequestMapping("/cart-detail")
    public String detailCart(Model model) {
        return "cart-detail";
    }

    @RequestMapping("/thanhtoan")
    public String thanhToan(Model model) {
        model.addAttribute("order", new OrderEntity());
        model.addAttribute("action", "checkout");
        AccountEntity acc = AccountUntill.getAccount();
        if (acc != null) {
            model.addAttribute("getaccount", accountService.findAccountById(acc.getId()));
        }
        return "thanhtoan";
    }

    // search for name
    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String searchProduct(HttpServletRequest request) {
        String productName = request.getParameter("productName");
        List<ProductEntity> productEntitys = productService.searchProductName(productName);
        request.setAttribute("products", productEntitys);
        return "search-product";
    }
    // your account

    @RequestMapping(value = "/tomyaccount", method = RequestMethod.GET)
    public String yourAccount(Model model) {
        AccountEntity accountEntity = AccountUntill.getAccount();
        model.addAttribute("getaccount", accountService.findAccountById(accountEntity.getId()));
        return "my-account";
    }

    @RequestMapping(value = "/searchproducttype/{id}/{name}", method = RequestMethod.GET)
    public String searchProductType(HttpServletRequest request, Model model, @PathVariable("id") int providerType, @PathVariable("name") String productTypeName) {
        model.addAttribute("products", productService.searchProductTypes(providerType));
        request.setAttribute("title", productTypeName);
        return "search-product";
    }

    @RequestMapping(value = "/searchprovider/{id}/{name}", method = RequestMethod.GET)
    public String searchProvider(HttpServletRequest request, Model model, @PathVariable("id") int providerType, @PathVariable("name") String providerName) {
        model.addAttribute("products", productService.searchProvider(providerType));
        request.setAttribute("title", providerName);
        return "search-product";
    }

    @RequestMapping("/createaccount")
    public String creachAccount(Model model, @RequestParam(name = "message1", required = false, defaultValue = "") String status) {
        model.addAttribute("message", "create");
        model.addAttribute("acount", new AccountEntity());
        model.addAttribute("action", "saveAccount");
        if (status.equals("exsit")) {
            model.addAttribute("message1", "User Name or Email đã tồn tại!");
        }
        return "create-account";
    }

    @RequestMapping(value = "/saveAccount", method = RequestMethod.POST)
    public String saveAccount(Model model, HttpSession session, @ModelAttribute("acount") AccountEntity accountEntity) throws MessagingException {
        AccountEntity accountEntity1 = accountService.findAccountByUsernameAndEmail(accountEntity.getUsername(), accountEntity.getEmail());
        if (accountEntity1 == null) {
            List<AccountRoleEntity> accountRoleEntitys = new ArrayList<>();
            AccountRoleEntity accountRoleEntity = accountRoleService.getRole(3);
            accountRoleEntitys.add(accountRoleEntity);
            accountEntity.setAccountRoles(accountRoleEntitys);
            accountEntity.setStatus(Status.InActive);
            model.addAttribute("getaccount", accountService.saveAccount(accountEntity));
            model.addAttribute("saveaccount", "saveaccount");
            sendHtmlEmail(accountEntity, session);
            model.addAttribute("message1", "Bạn đã đăng ký thành công! Vui lòng vào email để kích hoạt tài khoản.");
            return "create-account";
        } else {

            return "redirect:/createaccount?message1=exsit";
        }
    }

    public void sendHtmlEmail(AccountEntity accountEntity, HttpSession session) throws MessagingException {

        MimeMessage message = mailSender.createMimeMessage();
        boolean multipart = true;
        MimeMessageHelper helper = new MimeMessageHelper(message, multipart, "utf-8");
        Random rd = new Random();   // khai báo 1 đối tượng Random
        int number = rd.nextInt();  // trả về 1 số nguyên bất kỳ
        session.setAttribute("status", number);
        session.setAttribute("email", accountEntity.getEmail());
        String htmlMsg = "<h3>Please enter link to active account</h3><a href='http://localhost:8080/JV27_Spring_Project_Final/home?status=" + number + "&email=" + accountEntity.getEmail() + "'>click here!</a>";
        message.setContent(htmlMsg, "text/html");
        helper.setTo(accountEntity.getEmail());
        helper.setSubject("Test send HTML email");
        this.mailSender.send(message);
    }

    @RequestMapping("/edit")
    public String editAccount(Model model) {
        model.addAttribute("acount", new AccountEntity());
        model.addAttribute("action", "updateaccount");
        model.addAttribute("message", "updateaccount");
        AccountEntity accountEntity = AccountUntill.getAccount();
        model.addAttribute("accounted", accountService.findAccountById(accountEntity.getId()));
        return "create-account";
    }

    @RequestMapping(value = "/updateaccount", method = RequestMethod.POST)
    public String updateAccount(Model model, @ModelAttribute("acount") AccountEntity accountEntity) {
        model.addAttribute("acount", new AccountEntity());
        model.addAttribute("action", "updateaccount");
        model.addAttribute("getaccount", accountService.saveAccount(accountEntity));
        return "my-account";
    }

    @RequestMapping("/checkout")
    public String cheakOut(Model model, HttpSession session, @ModelAttribute("order") OrderEntity orderEntity) {
        List<OrderDetailEntity> cartItem = (List<OrderDetailEntity>) session.getAttribute("myCartItems");
        AccountEntity accountEntity = AccountUntill.getAccount();
        model.addAttribute("cartItem", cartItem);
        //create 1 orders
        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        orderEntity.setOrderDate(date);
        double totalPrice = (double) session.getAttribute("myCartTotal");
        orderEntity.setTotalPrice(totalPrice);
        orderEntity.setOrderDetail(cartItem);
        if (accountEntity != null) {
            orderEntity.setAccount(accountEntity);
        }
        OrderEntity orderSaved = orderService.saveOrder(orderEntity);
        for (OrderDetailEntity od : orderSaved.getOrderDetail()) {
            od.setOrder(orderSaved);
            orderDetailService.saveOrderDetail(od);
        }
        model.addAttribute("shipping", orderEntity);
        model.addAttribute("checkout", "checkout");
        String recipientAddress = "phamduythanh19998@gamil.com";
        String subject = "Ban da dat hang thanh cong!";
        String message = "Thông tin khách hàng:\n ";
        message = message + "Ho va Ten: " + orderEntity.getShippingOrder().getFullName() + "\nDia chi:     "
                + orderEntity.getShippingOrder().getAddress() + "\nDien Thoai:  "
                + orderEntity.getShippingOrder().getPhone() + "\nNgay order:  "
                + orderEntity.getOrderDate() + " \n\n\n";
        message = message + "Name                                           Price               Quantity       \n\n";

        for (int j = 0; j < orderEntity.getOrderDetail().size(); j++) {
            message += orderEntity.getOrderDetail().get(j).getProduct().getName() + "                     "
                    + orderEntity.getOrderDetail().get(j).getProduct().getPrice() + "                     "
                    + orderEntity.getOrderDetail().get(j).getQuantity() + "\n";
        }
        // creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(message);
        // sends the e-mail
        mailSender.send(email);
        cartItems.clear();
        return "dat-hang-thanh-cong";
    }
}
