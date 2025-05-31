.class public Lcom/badlogic/gdx/math/Bresenham2;
.super Ljava/lang/Object;
.source "Bresenham2.java"


# instance fields
.field private final points:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation
.end field

.field private final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Bresenham2$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Bresenham2$1;-><init>(Lcom/badlogic/gdx/math/Bresenham2;)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method


# virtual methods
.method public line(IIII)Lcom/badlogic/gdx/utils/Array;
    .locals 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 54
    iget-object v5, p0, Lcom/badlogic/gdx/math/Bresenham2;->pool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Bresenham2;->points:Lcom/badlogic/gdx/utils/Array;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/math/Bresenham2;->line(IIIILcom/badlogic/gdx/utils/Pool;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public line(IIIILcom/badlogic/gdx/utils/Pool;Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;)",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    .local p5, "pool":Lcom/badlogic/gdx/utils/Pool;, "Lcom/badlogic/gdx/utils/Pool<Lcom/badlogic/gdx/math/GridPoint2;>;"
    .local p6, "output":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/GridPoint2;>;"
    sub-int v11, p3, p1

    .line 68
    .local v11, "w":I
    sub-int v5, p4, p2

    .line 69
    .local v5, "h":I
    const/4 v1, 0x0

    .local v1, "dx1":I
    const/4 v3, 0x0

    .local v3, "dy1":I
    const/4 v2, 0x0

    .local v2, "dx2":I
    const/4 v4, 0x0

    .line 70
    .local v4, "dy2":I
    if-gez v11, :cond_4

    .line 71
    const/4 v1, -0x1

    .line 72
    const/4 v2, -0x1

    .line 77
    :cond_0
    :goto_0
    if-gez v5, :cond_5

    .line 78
    const/4 v3, -0x1

    .line 80
    :cond_1
    :goto_1
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 81
    .local v7, "longest":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 82
    .local v10, "shortest":I
    if-gt v7, v10, :cond_3

    .line 83
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 84
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 85
    if-gez v5, :cond_6

    .line 86
    const/4 v4, -0x1

    .line 88
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 90
    :cond_3
    shr-int/lit8 v8, v7, 0x1

    .line 91
    .local v8, "numerator":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-gt v6, v7, :cond_8

    .line 92
    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/badlogic/gdx/math/GridPoint2;

    .line 93
    .local v9, "point":Lcom/badlogic/gdx/math/GridPoint2;
    invoke-virtual {v9, p1, p2}, Lcom/badlogic/gdx/math/GridPoint2;->set(II)Lcom/badlogic/gdx/math/GridPoint2;

    .line 94
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 95
    add-int/2addr v8, v10

    .line 96
    if-le v8, v7, :cond_7

    .line 97
    sub-int/2addr v8, v7

    .line 98
    add-int/2addr p1, v1

    .line 99
    add-int/2addr p2, v3

    .line 91
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 73
    .end local v6    # "i":I
    .end local v7    # "longest":I
    .end local v8    # "numerator":I
    .end local v9    # "point":Lcom/badlogic/gdx/math/GridPoint2;
    .end local v10    # "shortest":I
    :cond_4
    if-lez v11, :cond_0

    .line 74
    const/4 v1, 0x1

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    :cond_5
    if-lez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 87
    .restart local v7    # "longest":I
    .restart local v10    # "shortest":I
    :cond_6
    if-lez v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    .line 101
    .restart local v6    # "i":I
    .restart local v8    # "numerator":I
    .restart local v9    # "point":Lcom/badlogic/gdx/math/GridPoint2;
    :cond_7
    add-int/2addr p1, v2

    .line 102
    add-int/2addr p2, v4

    goto :goto_4

    .line 105
    .end local v9    # "point":Lcom/badlogic/gdx/math/GridPoint2;
    :cond_8
    return-object p6
.end method

.method public line(Lcom/badlogic/gdx/math/GridPoint2;Lcom/badlogic/gdx/math/GridPoint2;)Lcom/badlogic/gdx/utils/Array;
    .locals 4
    .param p1, "start"    # Lcom/badlogic/gdx/math/GridPoint2;
    .param p2, "end"    # Lcom/badlogic/gdx/math/GridPoint2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ")",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/GridPoint2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget v2, p2, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v3, p2, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Bresenham2;->line(IIII)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method
