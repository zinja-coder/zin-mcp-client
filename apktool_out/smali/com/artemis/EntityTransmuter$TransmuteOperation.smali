.class Lcom/artemis/EntityTransmuter$TransmuteOperation;
.super Ljava/lang/Object;
.source "EntityTransmuter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artemis/EntityTransmuter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransmuteOperation"
.end annotation


# instance fields
.field private additions:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/ComponentType;",
            ">;"
        }
    .end annotation
.end field

.field public final compositionId:I

.field private removals:Lcom/artemis/utils/Bag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/ComponentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/artemis/utils/Bag;Lcom/artemis/utils/Bag;)V
    .locals 0
    .param p1, "compositionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/ComponentType;",
            ">;",
            "Lcom/artemis/utils/Bag",
            "<",
            "Lcom/artemis/ComponentType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "additions":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/ComponentType;>;"
    .local p3, "removals":Lcom/artemis/utils/Bag;, "Lcom/artemis/utils/Bag<Lcom/artemis/ComponentType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/artemis/EntityTransmuter$TransmuteOperation;->compositionId:I

    .line 97
    iput-object p2, p0, Lcom/artemis/EntityTransmuter$TransmuteOperation;->additions:Lcom/artemis/utils/Bag;

    .line 98
    iput-object p3, p0, Lcom/artemis/EntityTransmuter$TransmuteOperation;->removals:Lcom/artemis/utils/Bag;

    .line 99
    return-void
.end method


# virtual methods
.method public perform(Lcom/artemis/Entity;Lcom/artemis/ComponentManager;)V
    .locals 3
    .param p1, "e"    # Lcom/artemis/Entity;
    .param p2, "cm"    # Lcom/artemis/ComponentManager;

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/artemis/EntityTransmuter$TransmuteOperation;->additions:Lcom/artemis/utils/Bag;

    invoke-virtual {v2}, Lcom/artemis/utils/Bag;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 103
    iget-object v2, p0, Lcom/artemis/EntityTransmuter$TransmuteOperation;->additions:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/ComponentType;

    invoke-virtual {p2, p1, v2}, Lcom/artemis/ComponentManager;->create(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)Lcom/artemis/Component;

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/artemis/EntityTransmuter$TransmuteOperation;->removals:Lcom/artemis/utils/Bag;

    invoke-virtual {v2}, Lcom/artemis/utils/Bag;->size()I

    move-result v1

    :goto_1
    if-le v1, v0, :cond_1

    .line 106
    iget-object v2, p0, Lcom/artemis/EntityTransmuter$TransmuteOperation;->removals:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v0}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/ComponentType;

    invoke-virtual {p2, p1, v2}, Lcom/artemis/ComponentManager;->removeComponent(Lcom/artemis/Entity;Lcom/artemis/ComponentType;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_1
    return-void
.end method
