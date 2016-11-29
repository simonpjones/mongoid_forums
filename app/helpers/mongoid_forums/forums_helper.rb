module MongoidForums
  module ForumsHelper
    def topics_count(forum)
      forum.topics.count
    end

    def posts_count(forum)
      if forum.posts_count == nil
        forum.posts_count = forum.topics.inject(0) {|sum, topic| topic.posts.count + sum }
        forum.save
      end
      forum.posts_count
    end

    def last_post(forum)
      last_post_text = "No posts yet"
      if last_topic = forum.topics.select {|topic| can?(:read, topic) }.last
        last_post = last_topic.posts.last
        last_post_text = "#{time_ago_in_words(last_post.created_at)} ago on "
        last_post_text += "#{last_post.topic.emojified_name} by #{last_post.user.forum_display_name}"
      end
      last_post_text.html_safe
    end

    def last_topic_post(topic)
      "about #{time_ago_in_words(topic.posts.last.created_at)} ago #{topic.posts.last.user.forum_display_name}"

    end
  end
end
