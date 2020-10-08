require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'

class StudentTest < Minitest::Test
    def test_student_name_mod_and_skills
        student = Student.new("Sophocles", 1)

        assert_equal "Sophocles", student.name
        assert_equal 1, student.mod
        assert_equal [], student.skills
    end

    def test_say_mod
        student = Student.new("Sophocles", 1)

        assert_equal "I'm in Mod 1", student.say_mod
    end

    def test_can_learn_skill
        student = Student.new("Sophocles", 1)
        student.learn("testing")

        assert_equal ["testing"], student.skills
    end

    def test_can_learn_mulltiple_skill
        student = Student.new("Sophocles", 1)
        student.learn("testing")
        student.learn("mocks")

        assert_equal ["testing", "mocks"], student.skills
    end
    
    def test_can_promote_student_to_next_mod
        student = Student.new("Sophocles", 1)
        student.promote

        assert_equal "I'm in Mod 2", student.say_mod
    end
    
    
end