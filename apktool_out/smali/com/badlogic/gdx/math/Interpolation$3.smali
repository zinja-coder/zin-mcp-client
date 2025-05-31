.class final Lcom/badlogic/gdx/math/Interpolation$3;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 2
    .param p1, "a"    # F

    .prologue
    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method
