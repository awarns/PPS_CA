$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec-expectations'
require 'page-object'
require 'require_all'
require 'fig_newton'
require 'data_magic'


require_all 'lib'


World(PageObject::PageFactory)

PageObject::PageFactory.routes = {
    :default => [],
    :nav_through_profile => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_profile],
        [AddressInfoPage, :click_additional_info],
        [AdditionalInfoPage, :click_commission_options],
        [CommissionOptionsPage, :click_my_website_info],
        [MyWebsiteInfoPage, :click_upload_photo]
    ],
    :nav_through_incentives => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_incentives],
        [IncentivesHomePage, :click_startswell],
        [StartswellPage, :click_incentives],
    ],
    :continue_unsubmitted_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :continue_order],
        [ShippingInformationPage, :click_save_and_continue],
        [YourInvoicePage, :click_back_to_products]
    ],
    :consultant_business_supply_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_business_supply_order],
        [ShippingInformationPage, :click_save_and_continue],
        [OrderDetailsPage, :add_item_to_business_supply_order],
        [OrderDetailsPage, :party_personalize_item_with_none],
    ],
    :consultant_retail_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_retail_order],
        [ShippingInformationPage, :enter_retail_shipping_info],
        [ShopOnlinePage, :add_product_to_cart],
        [ProductInformationPage, :add_product_to_cart]
    ],
    :retail_checkout => [
        [ShopOnlinePage, :click_view_cart],
        [ProductsInYourCartPage, :click_checkout],
        [YourInvoicePage, :pay_for_order],
        [PaymentPage, :checkout_with_credit_card],
        [SubmittingOrderPage, :verify_submission]
    ],
    :consultant_party_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_party_order],
        [HostInformationPage, :enter_host_info]
    ],
    :party_order_add_guest => [
        [OrderDetailsPage, :click_add_guest],
        [GuestInformationPage, :add_guest]
    ],
    :party_order_add_products => [
        [OrderDetailsPage, :add_item_to_party_order],
        [OrderDetailsPage, :party_personalize_item_with_icon_it],
        [OrderDetailsPage, :add_item_to_party_order, :item_code => '3893'],
        [OrderDetailsPage, :party_personalize_item_with_none],
        [OrderDetailsPage, :add_item_to_party_order, :customer_list => 'Mike Ross'],
        [OrderDetailsPage, :party_personalize_item_with_icon_it]
    ],
    :party_order_nav_to_checkout => [
        [OrderDetailsPage, :click_payments],
        [OrderDetailsPage, :click_ok_in_popup]
    ],
    :party_checkout => [
        [PaymentPage, :click_submit_order],
        [SubmittingOrderPage, :verify_submission]
    ],
    :business_supply_checkout => [
        [OrderDetailsPage, :click_payments],
        [PaymentPage, :checkout_with_credit_card],
        [SubmittingOrderPage, :verify_submission],
    ],
    :place_business_expression_order => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_business_expression_order],
    ],
    :run_downline_report => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_downline],
        [DownlinePage, :run_downline]
    ],
    :nav_to_commissions => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_commissions],
        [CommissionsPage, :click_rebates]
    ],
    :nav_to_account_balance => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_account_balance],
        [AccountBalancePage, :search_account_balance]
    ],
    :create_party_event => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_my_events],
        [MyEventsHomePage, :click_party_event],
        [EventDetailsPage, :enter_event_details_party_event],
    ],
    :nav_through_event => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_my_events],
        [MyEventsHomePage, :edit_existing_event],
        [EventGuestListPage, :nav_to_invitations],
        [EventInvitationsPage, :nav_to_guest_list],
    ],
    :create_non_party_event => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_my_events],
        [MyEventsHomePage, :click_non_party_event],
        [EventDetailsPage, :enter_event_details_non_party_event]
    ],
    :create_party_event_with_hostess_options => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_my_events],
        [MyEventsHomePage, :click_party_event_hostess],
        [EventDetailsPage, :enter_event_details_party_event]
    ],
    :nav_to_email => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_email],
        [EmailPage, :create_an_invitation],
    ],
    :nav_to_contacts => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_contacts],
    ],
    :nav_to_follow_ups => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_follow_ups],
        [MyFollowUpsPage, :click_add_a_follow_up]
    ],
    :redeem_gift_cert => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_gift_cert],
        [ManageGiftCertificatesPage, :get_cert_number],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_retail_order],
        [ShippingInformationPage, :enter_retail_shipping_info],
        [ShopOnlinePage, :add_product_to_cart_1],
        [ProductInformationPage, :add_product_to_cart],
        [PersonalizationPage, :personalize_with_none],
        [ShopOnlinePage, :click_view_cart],
        [ProductsInYourCartPage, :click_checkout],
        [YourInvoicePage, :pay_for_order],
        [PaymentPage, :checkout_with_gift_cert],
    ],
    :customer_retail_order => [
        [ConsultantReplicatedSitePage, :click_place_an_order],
        [CstProductsPage, :cst_add_prod_to_order],
        [CstProductDetailsPage, :cst_prod_details_add_to_cart],
        [PersonalizationPage, :personalize_with_embroidery],
        [CstProductsPage, :cst_add_prod_to_order, :search_for_item => '3244'],
        [CstProductDetailsPage, :cst_prod_details_add_to_cart],
        [PersonalizationPage, :personalize_with_none],
        [CstProductDetailsPage, :view_items_in_cart],
        [CstShoppingCartPage, :click_checkout],
        [CstCheckoutShippingInfoPage, :enter_cst_shipping_info_retail],
        [YourInvoicePage, :cst_pay_for_order]
    ],
    :customer_checkout => [
        [CstOrderPaymentPage, :cst_checkout_with_credit_card],
        [CstOrderPaymentPage, :cst_submit_order],
        [SubmittingOrderPage, :cst_verify_submission]
    ],
    :cst_party_order => [
        [ConsultantReplicatedSitePage, :click_place_an_order],
        [CstShopOnlinePage, :shop_now],
        [CstEventDetailsPage, :shop_now],
        [CstProductsPage, :cst_add_prod_to_order],
        [CstProductDetailsPage, :cst_prod_details_add_to_cart],
        [PersonalizationPage, :personalize_with_embroidery],
        [CstProductsPage, :cst_add_prod_to_order, :search_for_item => '3244'],
        [CstProductDetailsPage, :cst_prod_details_add_to_cart],
        [PersonalizationPage, :personalize_with_none],
        [CstProductDetailsPage, :view_items_in_cart],
        [CstShoppingCartPage, :click_checkout],
        [CstCheckoutShippingInfoPage, :enter_cst_party_info],
        [YourInvoicePage, :cst_pay_for_order]
    ],
    :create_order_from_event => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_my_events],
        [MyEventsHomePage, :edit_existing_event],
        [EventGuestListPage, :create_the_order],
        [HostInformationPage, :click_save_and_continue],
    ],
    :nav_to_order_history => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order_history],
        [OrderHistoryPage, :view_order_in_popup]
    ],
    :nav_to_subscriptions => [
        [LoginPage, :login],
        [VirtualOfficeHomePage, :click_order],
        [OrderMainPage, :click_subscriptions],
        [MySubscriptionsPage, :order_subscription],
        [ShippingInformationPage, :click_save_and_continue],
        [OrderDetailsPage, :click_payments],
        [PaymentPage, :checkout_with_credit_card],
        [SubmittingOrderPage, :verify_subscription],
    ],
    :employee_nav_to_csr => [
        [EmployeeCsrManagerPage, :search_csr_manager],
    ],
    :csr_auto_ling => [
        [EmployeeCsrManagerPage, :search_csr_manager]
    ]
}

