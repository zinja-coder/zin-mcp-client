.class public Laurelienribon/tweenengine/primitives/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Laurelienribon/tweenengine/TweenAccessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Laurelienribon/tweenengine/TweenAccessor",
        "<",
        "Laurelienribon/tweenengine/primitives/MutableFloat;",
        ">;"
    }
.end annotation


# instance fields
.field private value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 12
    iput p1, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    .line 13
    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    return v0
.end method

.method public getValues(Laurelienribon/tweenengine/primitives/MutableFloat;I[F)I
    .locals 2
    .param p1, "target"    # Laurelienribon/tweenengine/primitives/MutableFloat;
    .param p2, "tweenType"    # I
    .param p3, "returnValues"    # [F

    .prologue
    .line 26
    const/4 v0, 0x0

    iget v1, p1, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    aput v1, p3, v0

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # [F

    .prologue
    .line 8
    check-cast p1, Laurelienribon/tweenengine/primitives/MutableFloat;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Laurelienribon/tweenengine/primitives/MutableFloat;->getValues(Laurelienribon/tweenengine/primitives/MutableFloat;I[F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 16
    iput p1, p0, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    .line 17
    return-void
.end method

.method public setValues(Laurelienribon/tweenengine/primitives/MutableFloat;I[F)V
    .locals 1
    .param p1, "target"    # Laurelienribon/tweenengine/primitives/MutableFloat;
    .param p2, "tweenType"    # I
    .param p3, "newValues"    # [F

    .prologue
    .line 32
    const/4 v0, 0x0

    aget v0, p3, v0

    iput v0, p1, Laurelienribon/tweenengine/primitives/MutableFloat;->value:F

    .line 33
    return-void
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # [F

    .prologue
    .line 8
    check-cast p1, Laurelienribon/tweenengine/primitives/MutableFloat;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Laurelienribon/tweenengine/primitives/MutableFloat;->setValues(Laurelienribon/tweenengine/primitives/MutableFloat;I[F)V

    return-void
.end method
