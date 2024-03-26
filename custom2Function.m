function xn = custom2Function(Ah,n, fs, fh,tau,w0)
    xn = Ah*customFunction2(n/fs-floor(n/fs*fh)*1/fh,tau,w0);
end