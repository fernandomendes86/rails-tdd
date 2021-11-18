describe 'HTTParty' do
  it 'content-type' do
    VCR.use_cassette("jsonplaceholder/post") do
      response = HTTParty.get('https://jsonplaceholder.typicode.com/posts/2')
      content_type = response.headers['content-type']
      expect(content_type).to match(/application\/json/)
    end
  end
end