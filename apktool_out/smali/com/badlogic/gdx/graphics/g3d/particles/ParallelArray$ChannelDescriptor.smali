.class public Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;
.super Ljava/lang/Object;
.source "ParallelArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelDescriptor"
.end annotation


# instance fields
.field public count:I

.field public id:I

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;I)V
    .locals 0
    .param p1, "id"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->id:I

    .line 24
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->type:Ljava/lang/Class;

    .line 25
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray$ChannelDescriptor;->count:I

    .line 26
    return-void
.end method
