require_relative "../titles.rb"

describe "#get_title" do
  it "should return Google" do
    expect(get_title("https://www.google.com")).to eq "Google"
  end

  it "url should be functional" do
    expect{get_title("https://www.poihugyfthdgrf.com")}.to raise_error(SocketError)
  end

  it "should be HTML" do
    expect(get_title("https://httpbin.org/uuid")).to eq ""
  end

  it "should has a title" do
    expect(get_title("https://httpbin.org/base64/SFRUUEJJTiBpcyBhd2Vzb21l")).to eq ""
  end

  it "should not be an image" do
    expect(get_title("https://httpbin.org/image/png")).to eq ""
  end
end
