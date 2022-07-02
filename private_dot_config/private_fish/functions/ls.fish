if command -q exa
    function ls
        exa --icons -a $argv
    end
end

function ll
    ls -l
end
