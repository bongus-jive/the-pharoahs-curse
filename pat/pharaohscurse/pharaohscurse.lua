function init()
    animator.playSound("sandstorm")
end

function update()
    local mpos = mcontroller.position()

    for i = 1, 4 do
        local pos = {
            mpos[1] + math.random(-1, 1) - 0.25,
            mpos[2] + math.random(-2, 0)
        }

        world.placeMaterial(pos, "foreground", "sand", math.random(-1, 1) * 3, true)
    end

    if math.random() > 0.75 then
        animator.burstParticleEmitter("sand")
        animator.playSound("sand")
    end
end
