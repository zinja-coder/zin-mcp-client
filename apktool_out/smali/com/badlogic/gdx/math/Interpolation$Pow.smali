.class public Lcom/badlogic/gdx/math/Interpolation$Pow;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pow"
.end annotation


# instance fields
.field final power:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "power"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 131
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    .line 132
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 6
    .param p1, "a"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 135
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    mul-float v0, p1, v4

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr v0, v4

    .line 136
    :goto_0
    return v0

    :cond_0
    sub-float v0, p1, v5

    mul-float/2addr v0, v4

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, -0x2

    :goto_1
    int-to-float v0, v0

    div-float v0, v1, v0

    add-float/2addr v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method
