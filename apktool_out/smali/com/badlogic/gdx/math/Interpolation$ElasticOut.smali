.class public Lcom/badlogic/gdx/math/Interpolation$ElasticOut;
.super Lcom/badlogic/gdx/math/Interpolation$Elastic;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElasticOut"
.end annotation


# direct methods
.method public constructor <init>(FFIF)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "power"    # F
    .param p3, "bounces"    # I
    .param p4, "scale"    # F

    .prologue
    .line 234
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Interpolation$Elastic;-><init>(FFIF)V

    .line 235
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 5
    .param p1, "a"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 238
    sub-float p1, v4, p1

    .line 239
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;->value:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;->power:F

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;->bounces:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticOut;->scale:F

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    return v0
.end method
