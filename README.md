## users(ユーザー情報)
|        Column      |  Type  |          Options          |
|---------------------------------------------------------|
|      nickname      | string |        null: false        |
|        email       | string | null: false, unique: true |
| encrypted_password | string |        null: false        |
|    first_name      | string |        null: false        |
|    last_name       | string |        null: false        |
|    first_namae     | string |        null: false        |
|    last_namae      | string |        null: false        |
|      birthday      |  date  |        null: false        |

### Association
- has_many :items
- has_many :buy_histories



## items(商品情報)
|      Column       |    Type     |            Options             |
|------------------------------------------------------------------|
|       user        | references  | null: false, foreign_key: true |
|    item_name      |   string    |           null: false          |
|      price        |   integer   |           null: false          |
|     detail        |    text     |           null: false          |
|   category_id     |   integer   |           null: false          |
|   condition_id    |   integer   |           null: false          |
| shipping_charge_id |   integer   |           null: false          |
| prefecture_id     |   integer   |           null: false          |
| delivery_date_id  |   integer   |           null: false          |

### Association
- belongs_to :user
- has_one :buy_history




## shipping_informations（発送先情報）
|      Column        |    Type     |   Options                      |
|-------------------------------------------------------------------|
|   postal_code      |   string    | null: false                    |
|   prefecture_id    |   integer   | null: false                    |
|   city_address     |   string    | null: false                    |
|  street_address    |   string    | null: false                    |
|  building_name     |   string    |                                |
|       tell         |   string    | null: false                    |
|  buy_histories     | references  | null: false, foreign_key: true |

### Association
- belongs_to :buy_history




## buy__histories(購入情報)
|   Column |  Type  |           Options              |
|----------------------------------------------------|
| user | references | null: false, foreign_key: true |
| item | references | null: false, foreign_key: true |



### Association
- belongs_to :user, :item
- has_one :shipping_information