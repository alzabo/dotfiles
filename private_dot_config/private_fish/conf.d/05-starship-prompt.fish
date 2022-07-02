if command -q starship
    function fish_prompt
        command starship prompt
    end
end
