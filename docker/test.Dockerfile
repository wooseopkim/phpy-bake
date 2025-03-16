FROM base

WORKDIR /workspace

COPY --from=build /usr/local/lib/libphp.so /usr/local/lib/
COPY --from=build /workspace/lib/phpy.so ./

SHELL ["python", "-c"]
RUN import phpy
RUN import phpy; print(phpy.constant("PHP_VERSION"))
