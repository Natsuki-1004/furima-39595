FactoryBot.define do
  factory :user do
    nickname              {'ニックネーム'}
    first_name             {'名'}
    last_name              {'姓'}
    first_name_kana        {'メイ'}
    last_name_kana         {'セイ'}
    birthday               {'1930-07-19'}
    email                  {'test@example'}
    password               {'test1234'}
    password_confirmation  {'test1234'}
  end
end