.class final Laurelienribon/tweenengine/equations/Cubic$1;
.super Laurelienribon/tweenengine/equations/Cubic;
.source "Cubic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Cubic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Cubic;-><init>()V

    return-void
.end method


# virtual methods
.method public final compute(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 14
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "Cubic.IN"

    return-object v0
.end method
