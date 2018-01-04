profile MyProfile
{
    Description = 'My Profile';
    RoleCenter = "Order Processor Role Center";
    Customizations = MyCustomization;
}
pagecustomization MyCustomization customizes "Customer List"
{
    layout
    {
        modify("Responsibility Center")
        {
            Visible = false;
        }
    }

    actions
    {
        movebefore(NewSalesInvoice;NewSalesOrder)
    }
    
    //Variables, procedures and triggers are not allowed on Page Customizations
}