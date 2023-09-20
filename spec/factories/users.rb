FactoryBot.define do
  factory :user do
    nick_name              {'ニックネーム'}
    first_name             {'名'}
    last_name              {'姓'}
    first_name_kana        {'メイ'}
    last_name_kana         {'セイ'}
    birthday               {'1930-07-19'}
    email                  {'test@test.com'}
    password               {'test1234'}
    password_confirmation  {'test1234'}
  end
end