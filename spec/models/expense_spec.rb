require 'rails_helper'

RSpec.describe Expense, type: :model do
  before do
    @expense = FactoryBot.build(:expense)
  end

  describe '支出の登録' do
    context '支出が登録できる場合' do
      it 'dateとexpense_category_id, payment_method_id, priceが存在していれば保存できる' do
        expect(@expense).to be_valid
      end
    end

    context '支出が登録できない場合' do
      it 'dateが空では保存できない' do
        @expense.date = nil
        @expense.valid?
        expect(@expense.errors.full_messages).to include("Date can't be blank")
      end

      it 'expense_category_idが空では保存できない' do
        @expense.expense_category_id = nil
        @expense.valid?
        expect(@expense.errors.full_messages).to include("Expense category can't be blank")
      end

      it 'payment_method_idが空では保存できない' do
        @expense.payment_method_id = nil
        @expense.valid?
        expect(@expense.errors.full_messages).to include("Payment method can't be blank")
      end

      it 'priceが空では保存できない' do
        @expense.price = nil
        @expense.valid?
        expect(@expense.errors.full_messages).to include("Price can't be blank")
      end

      it 'userが紐付いていないと保存できない' do
        @expense.user = nil
        @expense.valid?
        expect(@expense.errors.full_messages).to include("User must exist")
      end
    end
  end
end
