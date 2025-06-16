if status is-interactive
    # Commands to run in interactive sessions can go here
    if command -q starship
        eval (starship init fish)
    end
end
