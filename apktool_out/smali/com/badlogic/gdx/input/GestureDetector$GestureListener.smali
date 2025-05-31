.class public interface abstract Lcom/badlogic/gdx/input/GestureDetector$GestureListener;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureListener"
.end annotation


# virtual methods
.method public abstract fling(FFI)Z
.end method

.method public abstract longPress(FF)Z
.end method

.method public abstract pan(FFFF)Z
.end method

.method public abstract panStop(FFII)Z
.end method

.method public abstract pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
.end method

.method public abstract tap(FFII)Z
.end method

.method public abstract touchDown(FFII)Z
.end method

.method public abstract zoom(FF)Z
.end method
