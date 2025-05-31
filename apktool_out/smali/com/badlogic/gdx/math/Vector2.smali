.class public Lcom/badlogic/gdx/math/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/badlogic/gdx/math/Vector",
        "<",
        "Lcom/badlogic/gdx/math/Vector2;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector2;

.field public static final Y:Lcom/badlogic/gdx/math/Vector2;

.field public static final Zero:Lcom/badlogic/gdx/math/Vector2;

.field private static final serialVersionUID:J = 0xcaed5be6c419bb3L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 28
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->X:Lcom/badlogic/gdx/math/Vector2;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->Y:Lcom/badlogic/gdx/math/Vector2;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 46
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 53
    return-void
.end method

.method public static dot(FFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 140
    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static dst(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 189
    sub-float v0, p2, p0

    .line 190
    .local v0, "x_d":F
    sub-float v1, p3, p1

    .line 191
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dst2(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 211
    sub-float v0, p2, p0

    .line 212
    .local v0, "x_d":F
    sub-float v1, p3, p1

    .line 213
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static len(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 61
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static len2(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 70
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 134
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 136
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 124
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 126
    return-object p0
.end method

.method public bridge synthetic add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public angle()F
    .locals 6

    .prologue
    .line 307
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v2, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    const v2, 0x42652ee0

    mul-float v0, v1, v2

    .line 308
    .local v0, "angle":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 309
    :cond_0
    return v0
.end method

.method public angle(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "reference"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->crs(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public angleRad()F
    .locals 4

    .prologue
    .line 321
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public angleRad(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "reference"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->crs(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public clamp(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    .line 249
    .local v0, "len2":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1

    .line 257
    .end local p0    # "this":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    :goto_0
    return-object p0

    .line 251
    .restart local p0    # "this":Lcom/badlogic/gdx/math/Vector2;
    :cond_1
    mul-float v1, p2, p2

    .line 252
    .local v1, "max2":F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    .line 253
    div-float v3, v1, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    goto :goto_0

    .line 254
    :cond_2
    mul-float v2, p1, p1

    .line 255
    .local v2, "min2":F
    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    .line 256
    div-float v3, v2, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic clamp(FF)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F
    .param p2, "x1"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->clamp(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    return-object v0
.end method

.method public bridge synthetic cpy()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public crs(FF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 301
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 293
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public dot(FF)F
    .locals 2
    .param p1, "ox"    # F
    .param p2, "oy"    # F

    .prologue
    .line 149
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 145
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic dot(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    return v0
.end method

.method public dst(FF)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 205
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v2

    .line 206
    .local v0, "x_d":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v2

    .line 207
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 196
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 197
    .local v0, "x_d":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 198
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public bridge synthetic dst(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    return v0
.end method

.method public dst2(FF)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 227
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v2

    .line 228
    .local v0, "x_d":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v2

    .line 229
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 218
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, v2, v3

    .line 219
    .local v0, "x_d":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, v2, v3

    .line 220
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public bridge synthetic dst2(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    return v0
.end method

.method public epsilonEquals(FFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "epsilon"    # F

    .prologue
    const/4 v0, 0x0

    .line 423
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p3

    if-lez v1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 425
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .prologue
    const/4 v0, 0x0

    .line 414
    if-nez p1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 416
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 417
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 403
    if-ne p0, p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 404
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 406
    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 407
    .local v0, "other":Lcom/badlogic/gdx/math/Vector2;
    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 408
    :cond_4
    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hasOppositeDirection(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasOppositeDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    return v0
.end method

.method public hasSameDirection(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasSameDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->hasSameDirection(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 394
    const/16 v0, 0x1f

    .line 395
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 396
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 397
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 398
    return v1
.end method

.method public interpolate(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "alpha"    # F
    .param p3, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 389
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic interpolate(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F
    .param p3, "x2"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->interpolate(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .prologue
    .line 460
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isCollinear(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isCollinear(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    return v0
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .prologue
    .line 470
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    return v0
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 450
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    return v0
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .prologue
    .line 455
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    return v0
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    return v0
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 1
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isPerpendicular(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isPerpendicular(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    return v0
.end method

.method public isUnit()Z
    .locals 1

    .prologue
    .line 430
    const v0, 0x3089705f    # 1.0E-9f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->isUnit(F)Z

    move-result v0

    return v0
.end method

.method public isUnit(F)Z
    .locals 2
    .param p1, "margin"    # F

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero(F)Z
    .locals 1
    .param p1, "margin"    # F

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public len()F
    .locals 3

    .prologue
    .line 66
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 3

    .prologue
    .line 75
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "alpha"    # F

    .prologue
    .line 381
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p2

    .line 382
    .local v0, "invAlpha":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 383
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 384
    return-object p0
.end method

.method public bridge synthetic lerp(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public limit(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "limit"    # F

    .prologue
    .line 234
    mul-float v0, p1, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->limit2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic limit(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->limit(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public limit2(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "limit2"    # F

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    .line 240
    .local v0, "len2":F
    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    .line 241
    div-float v1, p1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    .line 243
    .end local p0    # "this":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic limit2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->limit2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 282
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    add-float v0, v2, v3

    .line 283
    .local v0, "x":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    add-float v1, v2, v3

    .line 284
    .local v1, "y":F
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 285
    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 286
    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "scalar"    # F

    .prologue
    .line 176
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 178
    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "mulVec"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 183
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 185
    return-object p0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    check-cast p2, Lcom/badlogic/gdx/math/Vector2;

    .end local p2    # "x1":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    .line 115
    .local v0, "len":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 116
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 117
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 119
    :cond_0
    return-object p0
.end method

.method public bridge synthetic nor()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 348
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public rotate90(I)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 368
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 369
    .local v0, "x":F
    if-ltz p1, :cond_0

    .line 370
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 371
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 376
    :goto_0
    return-object p0

    .line 373
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 374
    neg-float v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0
.end method

.method public rotateRad(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "radians"    # F

    .prologue
    .line 354
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 355
    .local v0, "cos":F
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 357
    .local v3, "sin":F
    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v5, v3

    sub-float v1, v4, v5

    .line 358
    .local v1, "newX":F
    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v5, v0

    add-float v2, v4, v5

    .line 360
    .local v2, "newY":F
    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 361
    iput v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 363
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "scalar"    # F

    .prologue
    .line 154
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 156
    return-object p0
.end method

.method public scl(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 162
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 164
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 169
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 171
    return-object p0
.end method

.method public bridge synthetic scl(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scl(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public set(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 91
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 92
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 80
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 81
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 82
    return-object p0
.end method

.method public bridge synthetic set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public setAngle(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 333
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->setAngleRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public setAngleRad(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "radians"    # F

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 340
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    .line 342
    return-object p0
.end method

.method public setLength(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "len"    # F

    .prologue
    .line 262
    mul-float v0, p1, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->setLength2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLength(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public setLength2(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "len2"    # F

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    .line 268
    .local v0, "oldLen2":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    cmpl-float v1, v0, p1

    if-nez v1, :cond_1

    .end local p0    # "this":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Vector2;
    :cond_1
    div-float v1, p1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic setLength2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->setLength2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public setZero()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 500
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 501
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 502
    return-object p0
.end method

.method public bridge synthetic setZero()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public sub(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 107
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 108
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 109
    return-object p0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 97
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 99
    return-object p0
.end method

.method public bridge synthetic sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
