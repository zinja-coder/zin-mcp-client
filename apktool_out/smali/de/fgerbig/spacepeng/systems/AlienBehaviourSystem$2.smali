.class Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem$2;
.super Ljava/lang/Object;
.source "AlienBehaviourSystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;->setGroupAttacking(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;

.field final synthetic val$e:Lcom/artemis/Entity;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;Lcom/artemis/Entity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem$2;->this$0:Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem;

    iput-object p2, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem$2;->val$e:Lcom/artemis/Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/AlienBehaviourSystem$2;->val$e:Lcom/artemis/Entity;

    invoke-virtual {v0}, Lcom/artemis/Entity;->edit()Lcom/artemis/EntityEdit;

    move-result-object v0

    new-instance v1, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;

    const-string v2, "defaultMovement"

    invoke-direct {v1, v2}, Lde/fgerbig/spacepeng/components/TransitionToNewPathMovement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/artemis/EntityEdit;->add(Lcom/artemis/Component;)Lcom/artemis/EntityEdit;

    .line 199
    return-void
.end method
