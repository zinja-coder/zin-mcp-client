.class public abstract Lcom/artemis/ComponentMapper;
.super Ljava/lang/Object;
.source "ComponentMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/artemis/Component;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    .local p0, "this":Lcom/artemis/ComponentMapper;, "Lcom/artemis/ComponentMapper<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFor(Ljava/lang/Class;Lcom/artemis/World;)Lcom/artemis/ComponentMapper;
    .locals 2
    .param p1, "world"    # Lcom/artemis/World;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/artemis/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/artemis/World;",
            ")",
            "Lcom/artemis/ComponentMapper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Lcom/artemis/World;->getComponentManager()Lcom/artemis/ComponentManager;

    move-result-object v1

    iget-object v0, v1, Lcom/artemis/ComponentManager;->typeFactory:Lcom/artemis/ComponentTypeFactory;

    .line 94
    .local v0, "tf":Lcom/artemis/ComponentTypeFactory;
    invoke-virtual {v0, p0}, Lcom/artemis/ComponentTypeFactory;->getTypeFor(Ljava/lang/Class;)Lcom/artemis/ComponentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/artemis/ComponentType;->isPackedComponent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/artemis/PackedComponentMapper;->create(Ljava/lang/Class;Lcom/artemis/World;)Lcom/artemis/PackedComponentMapper;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/artemis/BasicComponentMapper;

    invoke-direct {v1, p0, p1}, Lcom/artemis/BasicComponentMapper;-><init>(Ljava/lang/Class;Lcom/artemis/World;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract get(Lcom/artemis/Entity;)Lcom/artemis/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract get(Lcom/artemis/Entity;Z)Lcom/artemis/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            "Z)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            ")TA;"
        }
    .end annotation
.end method

.method public abstract getSafe(Lcom/artemis/Entity;Z)Lcom/artemis/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/artemis/Entity;",
            "Z)TA;"
        }
    .end annotation
.end method

.method public abstract has(Lcom/artemis/Entity;)Z
.end method
