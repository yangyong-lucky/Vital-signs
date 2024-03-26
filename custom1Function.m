function xn = custom1Function(Ar,n, fs, fr,tau)
    xn = Ar*customFunction1(n/fs-floor(n/fs*fr)*1/fr,tau);
end