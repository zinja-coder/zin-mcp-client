.class public Lcom/artemis/ComponentTypeFactory;
.super Ljava/lang/Object;
.source "ComponentTypeFactory.java"


# instance fields
.field private componentTypeCount:I

.field private final componentTypes:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;",
            "Lcom/artemis/ComponentType;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Lcom/artemis/utils/Bag;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentTypeFactory;->componentTypes:Ljava/util/IdentityHashMap;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/artemis/ComponentTypeFactory;->componentTypeCount:I

    .line 20
    new-instance v0, Lcom/artemis/utils/Bag;

    invoke-direct {v0}, Lcom/artemis/utils/Bag;-><init>()V

    iput-object v0, p0, Lcom/artemis/ComponentTypeFactory;->types:Lcom/artemis/utils/Bag;

    return-void
.end method


# virtual methods
.method public getIndexFor(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    invoke-virtual {p0, p1}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artemis/ComponentType;->getIndex()I

    move-result v0

    return v0
.end method

.method protected getTaxonomy(I)Lcom/artemis/ComponentType$Taxonomy;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/artemis/ComponentTypeFactory;->types:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/ComponentType;

    invoke-virtual {v0}, Lcom/artemis/ComponentType;->getTaxonomy()Lcom/artemis/ComponentType$Taxonomy;

    move-result-object v0

    return-object v0
.end method

.method public getTypeFor(I)Lcom/artemis/ComponentType;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/artemis/ComponentTypeFactory;->types:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/ComponentType;

    return-object v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/artemis/Component;",
            ">;)",
            "Lcom/artemis/ComponentType;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/artemis/Component;>;"
    iget-object v2, p0, Lcom/artemis/ComponentTypeFactory;->componentTypes:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/artemis/ComponentType;

    .line 38
    .local v1, "type":Lcom/artemis/ComponentType;
    if-nez v1, :cond_0

    .line 39
    iget v0, p0, Lcom/artemis/ComponentTypeFactory;->componentTypeCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/artemis/ComponentTypeFactory;->componentTypeCount:I

    .line 40
    .local v0, "index":I
    new-instance v1, Lcom/artemis/ComponentType;

    .end local v1    # "type":Lcom/artemis/ComponentType;
    invoke-direct {v1, p1, v0}, Lcom/artemis/ComponentType;-><init>(Ljava/lang/Class;I)V

    .line 41
    .restart local v1    # "type":Lcom/artemis/ComponentType;
    iget-object v2, p0, Lcom/artemis/ComponentTypeFactory;->componentTypes:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v2, p0, Lcom/artemis/ComponentTypeFactory;->types:Lcom/artemis/utils/Bag;

    invoke-virtual {v2, v0, v1}, Lcom/artemis/utils/Bag;->set(ILjava/lang/Object;)V

    .line 45
    .end local v0    # "index":I
    :cond_0
    return-object v1
.end method

.method protected isPackedComponent(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/artemis/ComponentTypeFactory;->types:Lcom/artemis/utils/Bag;

    invoke-virtual {v0, p1}, Lcom/artemis/utils/Bag;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/artemis/ComponentType;

    invoke-virtual {v0}, Lcom/artemis/ComponentType;->isPackedComponent()Z

    move-result v0

    return v0
.end method
