Vim�UnDo� p�l�+!� ��{
.�v���0����<�	"          field(:address, :map)            !       !   !   !    _%�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             _%�Z     �                   5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _%�\     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _%�`     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _%�`     �               �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _%�k     �              �             �                 *defmodule Backroom.Shop.CustomerDetails do     import Ecto.Query   !  alias Persistence.PaymentOption     alias Persistence.Repo       6  def get_customer_payment_options(nil), do: {:ok, []}       2  def get_customer_payment_options(customer_id) do       payment_options =         PaymentOption   4      |> where([po], po.customer_id == ^customer_id)         |> Repo.all()           {:ok, payment_options}     end   end5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        _%�|     �               defmodule Monster.Shop.Order do5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                 v        _%��     �               defmodule Monster.Shop.Order do5�_�      
          	          ����                                                                                                                                                                                                                                                                                                                                                 v        _%��     �               defmodule Monster.Shop.Cus do5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                 v       _%��    �               !defmodule Monster.Accounts.Cus do5�_�   
                         ����                                                                                                                                                                                                                                                                                                                               ,                  v        _%��     �                      alias Monster.Shop.OrderItem5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       _%��     �             �               �                  schema "orders" do       field(:total, :decimal)       field(:status, :string)   %    has_many(:order_items, OrderItem)           timestamps()     end5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       _%��     �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v        _%��     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        _%��     �             �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v        _%��    �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _%��     �                 .defmodule Persistence.Order.CustomerDetails do     use Persistence.Schema         embedded_schema do       field(:first_name, :string)       field(:last_name, :string)       field(:email, :string)        field(:contact_num, :string)       field(:address, :map)     end       )  def changeset(struct, params \\ %{}) do   
    struct   N    |> cast(params, [:first_name, :last_name, :email, :contact_num, :address])   0    |> validate_required([:email, :contact_num])     end   end5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _%��    �                  5�_�                          ����                                                                                                                                                                                                                                                                                                                               
          )       v   )    _%�&    �      	              field(:contact_num, :string)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _%��     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        _%��     �               �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _%��     �                   field(:first_name, :string)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _%��     �                   field(:last_name, :string)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _%��     �                   field(:email, :string)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _%��     �               #    field(:contact_number, :string)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _%��     �                   field(:address, :map)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        _%��    �                   field(:country, :map)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       _%��   
 �               -defmodule Monster.Accounts.CustomerDetails do5�_�                            ����                                                                                                                                                                                                                                                                                                                               
          !       v   !    _%�     �                 �             5�_�                            ����                                                                                                                                                                                                                                                                                                                               
          !       v   !    _%�    �                 alias �             5�_�      !                      ����                                                                                                                                                                                                                                                                                                                               
          !       v   !    _%�     �   
                field(:address, :map)5�_�                   !          ����                                                                                                                                                                                                                                                                                                                               
          !       v   !    _%�    �   
                field(:address, Address)5�_�                       
    ����                                                                                                                                                                                                                                                                                                                               
          )       v   )    _%��     �             �                Mdefmodule MMonster.Accounts.CustomerDetailsonster.Accounts.CustomerDetails do5�_�              	              ����                                                                                                                                                                                                                                                                                                                                                 v        _%��     �               o5��