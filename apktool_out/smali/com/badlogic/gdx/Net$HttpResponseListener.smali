.class public interface abstract Lcom/badlogic/gdx/Net$HttpResponseListener;
.super Ljava/lang/Object;
.source "Net.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Net;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpResponseListener"
.end annotation


# virtual methods
.method public abstract cancelled()V
.end method

.method public abstract failed(Ljava/lang/Throwable;)V
.end method

.method public abstract handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
.end method
