.class public interface abstract Lcom/badlogic/gdx/controllers/ControllerManager;
.super Ljava/lang/Object;
.source "ControllerManager.java"


# virtual methods
.method public abstract addListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
.end method

.method public abstract clearListeners()V
.end method

.method public abstract getControllers()Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/controllers/Controller;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
.end method
