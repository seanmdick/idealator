describe("adding a new topic", function() {
  describe("clicking the new_topic button", function() {
    beforeEach(function() {
      $("#jasmine_content").append("<span class='new_topic'></span>");
    });
    it("calls render_topic_form", function() {
      spyOn(Idealator, 'topic_form');
      
      $('.new_topic').click();
      expect(Idealator.topic_form).toHaveBeenCalled();
    });
  });
});