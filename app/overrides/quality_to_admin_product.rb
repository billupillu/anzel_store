Deface::Override.new(
    :virtual_path   => "spree/admin/products/_form",
    :name           => "company_logo_to_admin_product",
    :insert_bottom  => "[data-hook='admin_product_form_additional_fields']",
    :text           => "
          <div class='form-group field' >
                <%= f.label :quality %>
                <%= f.text_field :quality, class: 'form-control' %>
          </div>
          <div class='form-group field pull-left' style='border-bottom:3px solid #6477c9;'>
                <%= f.label :authenticity_letter %>
                <%= f.check_box :authenticity_letter, class: 'form-control pull-left' %>
          </div>
          <br><br><hr>
          
"
)