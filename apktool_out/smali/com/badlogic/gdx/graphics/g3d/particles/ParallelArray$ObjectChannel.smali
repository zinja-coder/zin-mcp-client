.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObjectChannel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;"
    }
.end annotation


# instance fields
.field componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field public data:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;IIILjava/lang/Class;)V
    .locals 1
    .param p2, "id"    # I
    .param p3, "strideSize"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<TT;>;"
    .local p5, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    .line 122
    mul-int v0, p4, p3

    invoke-static {p5, v0}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;ILjava/lang/Object;I)V

    .line 123
    iput-object p5, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->componentType:Ljava/lang/Class;

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    .line 125
    return-void
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 129
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<TT;>;"
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->this$0:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    mul-int v1, v3, v4

    .local v1, "i":I
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    add-int v0, v1, v3

    .local v0, "c":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 130
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    aget-object v4, p2, v2

    aput-object v4, v3, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public setCapacity(I)V
    .locals 5
    .param p1, "requiredCapacity"    # I

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<TT;>;"
    const/4 v4, 0x0

    .line 148
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->componentType:Ljava/lang/Class;

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    mul-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 149
    .local v0, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    array-length v2, v2

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$Channel;->data:Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public swap(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "k"    # I

    .prologue
    .line 137
    .local p0, "this":Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;, "Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel<TT;>;"
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    mul-int/2addr p1, v2

    .line 138
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    mul-int/2addr p2, v2

    .line 139
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->strideSize:I

    add-int v0, p1, v2

    .local v0, "c":I
    :goto_0
    if-ge p1, v0, :cond_0

    .line 140
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    aget-object v1, v2, p1

    .line 141
    .local v1, "t":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    aget-object v3, v3, p2

    aput-object v3, v2, p1

    .line 142
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ObjectChannel;->data:[Ljava/lang/Object;

    aput-object v1, v2, p2

    .line 139
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method
