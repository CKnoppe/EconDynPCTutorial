function k_ts = solow_simulate_SOLUTION(k_0, alpha, s, gamma, delta, T, timestep_func)
    % total number of time increments: inverse of increment times unit steps
    T = fix(T/delta);
    
    % time series of capital, as an array
    k_ts = NaN(T + 1);
    k_ts(1) = k_0;
    
    for t = 1:T
        k_ts(t+1) = timestep_func(k_ts(t), alpha, s, gamma, delta);
    end

end

    