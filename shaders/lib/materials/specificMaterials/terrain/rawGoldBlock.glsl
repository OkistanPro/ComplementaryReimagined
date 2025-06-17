materialMask = OSIEBCA * 3.0; // Gold Fresnel
smoothnessG = pow2(pow2(color.g)) * 1.5;
smoothnessD = 0.75 * (smoothnessG + color.b);