class AddUsers < ActiveRecord::Migration[6.1]
  def up
    (1..20).each do |i|
      User.create!(
        email: "customer_#{i}@ordersys.com",
        password: '123123123',
        first_name: 'customer',
        last_name: i,
        phone: '0901234567',
        address: '123 Abc Street',
        post_code: '70000'
      )
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
