.class public Lcom/badlogic/gdx/math/Interpolation$ElasticIn;
.super Lcom/badlogic/gdx/math/Interpolation$Elastic;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElasticIn"
.end annotation


# direct methods
.method public constructor <init>(FFIF)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "power"    # F
    .param p3, "bounces"    # I
    .param p4, "scale"    # F

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Interpolation$Elastic;-><init>(FFIF)V

    .line 224
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 6
    .param p1, "a"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 227
    float-to-double v2, p1

    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 228
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;->value:F

    float-to-double v2, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;->power:F

    sub-float v0, p1, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;->bounces:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;->scale:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method
