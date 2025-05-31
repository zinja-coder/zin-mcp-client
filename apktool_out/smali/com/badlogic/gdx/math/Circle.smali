.class public Lcom/badlogic/gdx/math/Circle;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field public radius:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 38
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 39
    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Circle;)V
    .locals 1
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 57
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 58
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radius"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 48
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 49
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "edge"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 67
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 68
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->len(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 69
    return-void
.end method


# virtual methods
.method public area()F
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    return v0
.end method

.method public circumference()F
    .locals 2

    .prologue
    .line 197
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    const v1, 0x40c90fdb

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 151
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float p1, v0, p1

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float p2, v0, p2

    .line 153
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Circle;)Z
    .locals 6
    .param p1, "c"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 170
    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float v0, v3, v4

    .line 171
    .local v0, "dx":F
    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float v1, v3, v4

    .line 175
    .local v1, "dy":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 176
    .local v2, "maxDistanceSqrd":F
    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 5
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 162
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 163
    .local v0, "dx":F
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 164
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    if-ne p1, p0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 208
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

    .line 209
    check-cast v0, Lcom/badlogic/gdx/math/Circle;

    .line 210
    .local v0, "c":Lcom/badlogic/gdx/math/Circle;
    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v4, v0, Lcom/badlogic/gdx/math/Circle;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v4, v0, Lcom/badlogic/gdx/math/Circle;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, v0, Lcom/badlogic/gdx/math/Circle;->radius:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 215
    const/16 v0, 0x29

    .line 216
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 217
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x29

    .line 218
    mul-int/lit8 v2, v1, 0x29

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 219
    mul-int/lit8 v2, v1, 0x29

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 220
    return v1
.end method

.method public overlaps(Lcom/badlogic/gdx/math/Circle;)Z
    .locals 6
    .param p1, "c"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 182
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float v1, v4, v5

    .line 183
    .local v1, "dx":F
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float v2, v4, v5

    .line 184
    .local v2, "dy":F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float v0, v4, v5

    .line 185
    .local v0, "distance":F
    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    add-float v3, v4, v5

    .line 186
    .local v3, "radiusSum":F
    mul-float v4, v3, v3

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public set(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 78
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 79
    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 80
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Circle;)V
    .locals 1
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .prologue
    .line 96
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 97
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 98
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 99
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radius"    # F

    .prologue
    .line 87
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 89
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 90
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "edge"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 106
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 107
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 108
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->len(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 109
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 122
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 123
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 124
    return-void
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 114
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 115
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 116
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 142
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 129
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 130
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
