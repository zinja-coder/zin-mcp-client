.class public Lcom/badlogic/gdx/math/Interpolation$Elastic;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Elastic"
.end annotation


# instance fields
.field final bounces:F

.field final power:F

.field final scale:F

.field final value:F


# direct methods
.method public constructor <init>(FFIF)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "power"    # F
    .param p3, "bounces"    # I
    .param p4, "scale"    # F

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 204
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    .line 205
    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    .line 206
    iput p4, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    .line 207
    int-to-float v0, p3

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v0

    rem-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    .line 208
    return-void

    .line 207
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public apply(F)F
    .locals 6
    .param p1, "a"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 211
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 212
    mul-float/2addr p1, v5

    .line 213
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_0
    sub-float p1, v4, p1

    .line 216
    mul-float/2addr p1, v5

    .line 217
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->value:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->power:F

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->bounces:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Elastic;->scale:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v5

    sub-float v0, v4, v0

    goto :goto_0
.end method
