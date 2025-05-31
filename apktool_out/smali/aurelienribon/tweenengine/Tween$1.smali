.class final Laurelienribon/tweenengine/Tween$1;
.super Ljava/lang/Object;
.source "Tween.java"

# interfaces
.implements Laurelienribon/tweenengine/Pool$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/Tween;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laurelienribon/tweenengine/Pool$Callback",
        "<",
        "Laurelienribon/tweenengine/Tween;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPool(Laurelienribon/tweenengine/Tween;)V
    .locals 0
    .param p1, "obj"    # Laurelienribon/tweenengine/Tween;

    .prologue
    .line 121
    invoke-virtual {p1}, Laurelienribon/tweenengine/Tween;->reset()V

    return-void
.end method

.method public bridge synthetic onPool(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Laurelienribon/tweenengine/Tween;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Tween$1;->onPool(Laurelienribon/tweenengine/Tween;)V

    return-void
.end method

.method public onUnPool(Laurelienribon/tweenengine/Tween;)V
    .locals 0
    .param p1, "obj"    # Laurelienribon/tweenengine/Tween;

    .prologue
    .line 122
    invoke-virtual {p1}, Laurelienribon/tweenengine/Tween;->reset()V

    return-void
.end method

.method public bridge synthetic onUnPool(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Laurelienribon/tweenengine/Tween;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Tween$1;->onUnPool(Laurelienribon/tweenengine/Tween;)V

    return-void
.end method
