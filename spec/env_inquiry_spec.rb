require "env_inquiry"

describe EnvInquiry::Env do

  let(:env_vars) do
    {'KEY1' => 'abc', 'KEY2' => 'false', 'KEY3' => 'true', 'KEY4' => nil}
  end

  before(:each) do
    EnvInquiry::Env.stub(env: env_vars)
    EnvInquiry::Env.inquire
  end

  it 'wraps env var key in dot notation' do
    expect(EnvInquiry::Env.key1).to eq 'abc'
  end

  it 'returns true for valid env var' do
    expect(EnvInquiry::Env.key1?).to be true
  end

  it 'returns nil for invalid key' do
    expect(EnvInquiry::Env.invalid_key).to be_nil
  end

  it 'returns nil for nil env var' do
    expect(EnvInquiry::Env.key4).to be_nil
  end

  it 'converts string value to boolean' do
    expect(EnvInquiry::Env.key2).to be false
    expect(EnvInquiry::Env.key2?).to be false
    expect(EnvInquiry::Env.key3).to be true
    expect(EnvInquiry::Env.key3?).to be true
  end
end
