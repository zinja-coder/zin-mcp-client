.class public Lcom/badlogic/gdx/math/Ellipse;
.super Ljava/lang/Object;
.source "Ellipse.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# static fields
.field private static final serialVersionUID:J = 0x66707957a1178663L


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 56
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 57
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 58
    iput p4, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Circle;)V
    .locals 1
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 85
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Ellipse;)V
    .locals 1
    .param p1, "ellipse"    # Lcom/badlogic/gdx/math/Ellipse;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 43
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 44
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 45
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;FF)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 68
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 69
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 70
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "size"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 75
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 76
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 77
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 78
    return-void
.end method


# virtual methods
.method public area()F
    .locals 3

    .prologue
    .line 183
    const v0, 0x40490fdb    # (float)Math.PI

    iget v1, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iget v2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public circumference()F
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40400000    # 3.0f

    .line 191
    iget v2, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    div-float v0, v2, v6

    .line 192
    .local v0, "a":F
    iget v2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    div-float v1, v2, v6

    .line 193
    .local v1, "b":F
    mul-float v2, v0, v7

    cmpl-float v2, v2, v1

    if-gtz v2, :cond_0

    mul-float v2, v1, v7

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 195
    :cond_0
    const-wide v2, 0x400921fb60000000L    # 3.1415927410125732

    add-float v4, v0, v1

    mul-float/2addr v4, v7

    float-to-double v4, v4

    mul-float v6, v7, v0

    add-float/2addr v6, v1

    mul-float/2addr v7, v1

    add-float/2addr v7, v0

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 198
    :goto_0
    return v2

    :cond_1
    const-wide v2, 0x401921fb60000000L    # 6.2831854820251465

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    goto :goto_0
.end method

.method public contains(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    sub-float/2addr p1, v0

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    sub-float/2addr p2, v0

    .line 100
    mul-float v0, p1, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    div-float/2addr v0, v1

    mul-float v1, p2, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 109
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Ellipse;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    if-ne p1, p0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 206
    check-cast v0, Lcom/badlogic/gdx/math/Ellipse;

    .line 207
    .local v0, "e":Lcom/badlogic/gdx/math/Ellipse;
    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iget v4, v0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iget v4, v0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iget v4, v0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 212
    const/16 v0, 0x35

    .line 213
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 214
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x35

    .line 215
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 216
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 217
    mul-int/lit8 v2, v1, 0x35

    iget v3, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 218
    return v1
.end method

.method public set(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 119
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 120
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 121
    iput p3, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 122
    iput p4, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 123
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Circle;)V
    .locals 1
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 136
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 137
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 138
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 139
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 140
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Ellipse;)V
    .locals 1
    .param p1, "ellipse"    # Lcom/badlogic/gdx/math/Ellipse;

    .prologue
    .line 129
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 130
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 131
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 132
    iget v0, p1, Lcom/badlogic/gdx/math/Ellipse;->height:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 133
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "size"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 143
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 144
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 145
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 146
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 147
    return-void
.end method

.method public setPosition(FF)Lcom/badlogic/gdx/math/Ellipse;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 165
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 167
    return-object p0
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Ellipse;
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 153
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->x:F

    .line 154
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Ellipse;->y:F

    .line 156
    return-object p0
.end method

.method public setSize(FF)Lcom/badlogic/gdx/math/Ellipse;
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 175
    iput p1, p0, Lcom/badlogic/gdx/math/Ellipse;->width:F

    .line 176
    iput p2, p0, Lcom/badlogic/gdx/math/Ellipse;->height:F

    .line 178
    return-object p0
.end method
