function ph = customFunction2(t,tau,w0)
    ph = exp(-t./tau)+((sqrt(2)/(w0*tau)-1)*sin((w0*t)/sqrt(2))-cos((w0*t)/sqrt(2))).*exp(-((w0*t)/sqrt(2)));
end
