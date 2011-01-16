describe("adding a new topic", function() {
  describe("topic_form", function() {
    it("contains a form to create a new topic", function() {
      expect($(Idealator.topic_form).find('form').length).toEqual(1);
      expect($(Idealator.topic_form).find('input[name=title]').length).toEqual(1);
      expect($(Idealator.topic_form).find('input[name=description]').length).toEqual(1);
    });
  });
  describe("clicking the new_topic button", function() {
    beforeEach(function() {
      $("#jasmine_content").append("<span class='new_topic'></span>");
    });
    it("calls topic_form", function() {
      spyOn(Idealator, 'topic_form');
      
      $('.new_topic').click();
      expect(Idealator.topic_form).toHaveBeenCalled();
    });
  });
});