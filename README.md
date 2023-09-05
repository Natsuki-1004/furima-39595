## users(ユーザー情報)
|        Column      |  Type  |   Options   |
|-------------------------------------------|
|      nickname      | string | null: false |
|        email       | string | null: false |
| encrypted_password | string | null: false |
|        name        | string | null: false |
|        namae       | string | null: false |
|      birthday      |  date  | null: false |

### Association
- has_many :items
- has_many :buy_history



## items(商品情報)
|      Column     |    Type    |            Options             |
|---------------------------------------------------------------|
|      seller     | references | null: false, foreign_key: true |
|    item_name    |   string   |           null: false          |
|      price      |   string   |           null: false          |
|     detail      |    text    |           null: false          |
|    category     |   string   |           null: false          |
|    condition    |   string   |           null: false          |
| shipping_price  |   string   |           null: false          |
| shipping_source |   string   |           null: false          |
|       day       |   integer  |           null: false          |

### Association
- belongs_to :users
- has_one :buy_history




## shipping_information（発送先情報）
|      Column     |    Type    |   Options   |
|--------------------------------------------|
|   postal_code   |   string   | null: false |
|   prefecture    |   string   | null: false |
|   city_address  |   string   | null: false |
|  street_address |   string   | null: false |
|  building_name  |   string   |             |
|       tell      |   string   | null: false |

### Association
- belongs_to :buy_history




## buy_history(購入情報)
|   Column |  Type  |           Options               |
|-----------------------------------------------------|
|  buy_day  | string |        null: false             |
| buy_price | string | null: false, foreign_key: true |
| item_name | string | null: false, foreign_key: true |

### Association
- belongs_to :users
- has_many :items, :shipping_information