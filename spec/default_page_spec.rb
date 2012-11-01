require File.dirname(__FILE__) + '/spec_helper'
# require File.dirname(__FILE__) + '/../../my_app'
require File.dirname(__FILE__) + '/../my_app'

describe 'The default page' do
    it 'should have some text' do
        visit "/"
        response_body.should contain 'Some text'
    end
end

