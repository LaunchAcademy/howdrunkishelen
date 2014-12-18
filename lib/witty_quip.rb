class WittyQuip
  def initialize(intoxication_state)
    @intoxication_state = intoxication_state
  end

  def text
    lol_map[@intoxication_state].sample
  end

  protected
  def lol_map
    {
      'probably working' => [
        "While you're using this stupid web page, she probably rebuilt the last feature you built. You don't have to look. It's better.",
        "She probably added a test to the feature you just pushed to master",
        "She is probably rage commenting on your pull request right now",
        "She's probably fixing a bug you introduced in production",
        "She'd rather be drinking, but you broke the build. Again.",
        "She's reminiscing of the glory days at Launch Academy. " +
          "She's probably making drinking plans with them right now."
      ],
      'buzzed' => [
        'Does uber take reservations?',
        'Buy her another round.',
        'Plan on apologizing to the waitstaff, or leaving a big tip'
      ],
      'drunk' => [
        'Hugs imminent',
        'She is probably pointing at you right now',
        'In the morning, she will venmo you the remainder of her tab',
        'Approaching sailor vernacular',
        "I bet she mentioned an indie film. It is kind of obscure, you've probably never heard of it.",
        "She'll probably be late for standup tomorrow."
      ],
      'wasted' => [
        'Has she told you how awesome you are yet?',
        'She has probably bummed a cigarette off of you',
        'Hide your cigarettes',
        'Selfies imminent'
      ]
    }
  end
end
