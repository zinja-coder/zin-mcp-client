.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatChannel"
.end annotation


# instance fields
.field public data:[F

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;III)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "strideSize"    # I
    .param p4, "size"    # I

    .prologue
    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    .line 52
    mul-int v0, p4, p3

    new-array v0, v0, [F

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;ILjava/lang/Object;I)V

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    check-cast v0, [F

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    .line 54
    return-void
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 58
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int v1, v3, v4

    .local v1, "i":I
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int v0, v1, v3

    .local v0, "c":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public setCapacity(I)V
    .locals 5
    .param p1, "requiredCapacity"    # I

    .prologue
    const/4 v4, 0x0

    .line 77
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr v1, p1

    new-array v0, v1, [F

    .line 78
    .local v0, "newData":[F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    array-length v2, v2

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "k"    # I

    .prologue
    .line 66
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr p1, v2

    .line 67
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    mul-int/2addr p2, v2

    .line 68
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->strideSize:I

    add-int v0, p1, v2

    .local v0, "c":I
    :goto_0
    if-ge p1, v0, :cond_0

    .line 69
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v1, v2, p1

    .line 70
    .local v1, "t":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aget v3, v3, p2

    aput v3, v2, p1

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$FloatChannel;->data:[F

    aput v1, v2, p2

    .line 68
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "t":F
    :cond_0
    return-void
.end method
