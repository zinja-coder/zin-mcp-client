.class final Laurelienribon/tweenengine/equations/Sine$1;
.super Laurelienribon/tweenengine/equations/Sine;
.source "Sine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Sine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Sine;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 16
    const v0, 0x3fc90fdb

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "Sine.IN"

    return-object v0
.end method
