shared_examples_for 'a global scope backend' do
  before do
    I18n.global_scope = global_scope
  end

  let(:resolved_global_scope) { global_scope.is_a?(Proc) ? global_scope.call : global_scope }

  context 'when scoped key does not exist' do
    before do
      store_translations(:en, foo: 'foo')
    end

    it 'returns translation for unscoped key' do
      expect(I18n.t('foo')).to eq 'foo'
    end
  end

  context 'when both scoped and not-scoped key exist' do
    before do
      store_translations(:en, resolved_global_scope => { foo: 'prefixed_foo', bar: { baz: 'prefixed_baz' } }, foo: 'foo', bar: { baz: 'baz' })
    end

    it 'returns translation for scoped key' do
      expect(I18n.t('foo')).to eq 'prefixed_foo'
      expect(I18n.t('bar.baz')).to eq 'prefixed_baz'
    end
  end
end
