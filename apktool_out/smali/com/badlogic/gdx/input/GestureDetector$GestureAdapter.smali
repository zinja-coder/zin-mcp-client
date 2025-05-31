.class public Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Lcom/badlogic/gdx/input/GestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(FFI)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "button"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public longPress(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public pan(FFFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public panStop(FFII)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1
    .param p1, "initialPointer1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "initialPointer2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "pointer1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "pointer2"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public tap(FFII)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "count"    # I
    .param p4, "button"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public touchDown(FFII)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public zoom(FF)Z
    .locals 1
    .param p1, "initialDistance"    # F
    .param p2, "distance"    # F

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method
