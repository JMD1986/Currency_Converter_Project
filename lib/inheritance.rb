class Music
  def sounds_like
    puts "vocal or instrumental sounds (or both) combined in such a way as
    to produce beauty of form, harmony, and expression of emotion."
  end
end
seikilos_epitaph = Music.new
http://en.wikipedia.org/wiki/Seikilos_epitaph

class RockAndRoll < Music
  def sounds_like
    puts "a type of popular dance music originating in the 1950s,
          characterized by a heavy beat and simple melodies.
          usually based on a twelve-bar structure and an
          instrumentation of guitar, bass, and drums."
  end
end
chuck_berry = RockAndRoll.new
https://www.youtube.com/watch?v=75RiHJGfyUE

class HardRock < RockAndRoll
  def sounds_like
    puts "highly amplified rock music with a heavy beat."
  end
end
led_zeppelin = HardRock.new
https://www.youtube.com/watch?v=Zyhu2ysqKGk

class HeavyMetal <HardRock
  def sounds_like
    puts "heavier than Hard Rock. the main difference between
    the terms heavy metal and hard rock is when the bands began.
    lyrical Subject metter tends to be more morbid"
  end
end
black_sabbath = HeavyMetal.new
https://www.youtube.com/watch?v=TNKttMFgaf0

class DoomMetal <HeavyMetal
  def sounds_like
    puts "an extreme form of heavy metal music that typically uses slower tempos,
    low-tuned guitars and a much "thicker" or "heavier" sound than other metal genres.
    Both the music and the lyrics intend to evoke a sense of despair, dread, and impending doom"
  end
end

electric_wizard = DoomMetal.new
https://www.youtube.com/watch?v=F-x6qqNy0mo
