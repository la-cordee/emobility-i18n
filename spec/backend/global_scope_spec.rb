require 'spec_helper'

describe I18n::Backend::GlobalScope do
  class GlobalScopeBackend < I18n::Backend::Simple
    include I18n::Backend::GlobalScope
  end

  before do
    I18n.backend = GlobalScopeBackend.new
  end

  context 'when global scope is not given' do
    before do
      store_translations(:en, foo: 'foo', bar: { baz: 'baz' })
    end

    it 'still returns translations as usual' do
      expect(I18n.t('foo')).to eq 'foo'
      expect(I18n.t('bar.baz')).to eq 'baz'
    end
  end

  context 'when a static global scope is given' do
    let(:global_scope) { 'prefix' }

    it_behaves_like 'a global scope backend'
  end

  context 'when a dynamic (Proc) global scope is given' do
    let(:global_scope) { -> { 'pre' + 'fix' } }

    it_behaves_like 'a global scope backend'
  end
end
