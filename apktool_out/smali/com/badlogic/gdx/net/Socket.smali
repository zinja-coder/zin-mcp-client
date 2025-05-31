.class public interface abstract Lcom/badlogic/gdx/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getRemoteAddress()Ljava/lang/String;
.end method

.method public abstract isConnected()Z
.end method
