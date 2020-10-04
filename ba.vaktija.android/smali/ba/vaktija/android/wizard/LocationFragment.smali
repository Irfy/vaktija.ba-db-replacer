.class public Lba/vaktija/android/wizard/LocationFragment;
.super Landroidx/fragment/app/Fragment;
.source "LocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_NO_WIZARD:Ljava/lang/String; = "EXTRA_NO_WIZARD"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field app:Lba/vaktija/android/App;

.field private locationId:I

.field private locationName:Ljava/lang/String;

.field mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field mListView:Landroid/widget/ListView;

.field next:Landroid/widget/Button;

.field noWizard:Z

.field prefs:Landroid/content/SharedPreferences;

.field prev:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lba/vaktija/android/wizard/LocationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/16 v0, 0x6b

    .line 50
    iput v0, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    const-string v0, "Sarajevo"

    .line 51
    iput-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lba/vaktija/android/wizard/LocationFragment;I)I
    .locals 0

    .line 37
    iput p1, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    return p1
.end method

.method static synthetic access$102(Lba/vaktija/android/wizard/LocationFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lba/vaktija/android/wizard/LocationFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;->saveSelectedLocation()V

    return-void
.end method

.method static synthetic access$300(Lba/vaktija/android/wizard/LocationFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;->replaceFragments()V

    return-void
.end method

.method private getHalfScreenHeight()I
    .locals 1

    .line 164
    invoke-virtual {p0}, Lba/vaktija/android/wizard/LocationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    add-int/lit16 v0, v0, -0x1f4

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static newInstance(Z)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_NO_WIZARD"

    .line 57
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    new-instance p0, Lba/vaktija/android/wizard/LocationFragment;

    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;-><init>()V

    .line 59
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private replaceFragments()V
    .locals 3

    .line 203
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 206
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    const v1, 0x7f010021

    const v2, 0x7f010022

    .line 207
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    const v1, 0x7f080056

    .line 210
    new-instance v2, Lba/vaktija/android/wizard/VakatTweaksFragment;

    invoke-direct {v2}, Lba/vaktija/android/wizard/VakatTweaksFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 211
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private saveSelectedLocation()V
    .locals 3

    .line 176
    sget-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    const-string v2, "selectedLocation"

    .line 179
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;

    const-string v2, "locationName"

    .line 180
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->app:Lba/vaktija/android/App;

    iget-object v1, p0, Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;

    const-string v2, "Odabrana lokacija"

    invoke-virtual {v0, v2, v1}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->app:Lba/vaktija/android/App;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 187
    invoke-virtual {p0}, Lba/vaktija/android/wizard/LocationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 189
    iget-boolean v0, p0, Lba/vaktija/android/wizard/LocationFragment;->noWizard:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->next:Landroid/widget/Button;

    new-instance v1, Lba/vaktija/android/wizard/LocationFragment$2;

    invoke-direct {v1, p0}, Lba/vaktija/android/wizard/LocationFragment$2;-><init>(Lba/vaktija/android/wizard/LocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .line 92
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    sget-object p1, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->prefs:Landroid/content/SharedPreferences;

    .line 97
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const-string v0, "Lokacija"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->prev:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->next:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lba/vaktija/android/wizard/LocationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_NO_WIZARD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lba/vaktija/android/wizard/LocationFragment;->noWizard:Z

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p0}, Lba/vaktija/android/wizard/LocationFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f080158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_0
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->app:Lba/vaktija/android/App;

    iget-object p1, p1, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    invoke-virtual {p1}, Lba/vaktija/android/db/Database;->getLocations()Ljava/util/List;

    move-result-object p1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x6b

    const-string v5, "Sand\u017eak"

    const-string v6, "Bosna i Hercegovina"

    const/4 v7, -0x1

    if-ge v2, v3, :cond_3

    if-nez v2, :cond_1

    .line 113
    new-instance v3, Lba/vaktija/android/models/Location;

    invoke-direct {v3, v6, v7}, Lba/vaktija/android/models/Location;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ne v2, v4, :cond_2

    .line 117
    new-instance v3, Lba/vaktija/android/models/Location;

    invoke-direct {v3, v5, v7}, Lba/vaktija/android/models/Location;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lba/vaktija/android/models/Location;

    invoke-direct {v2, v6, v7}, Lba/vaktija/android/models/Location;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6c

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lba/vaktija/android/models/Location;

    invoke-direct {v2, v5, v7}, Lba/vaktija/android/models/Location;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Lba/vaktija/android/LocationsAdapter;

    iget-object v2, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v1, v2, v0}, Lba/vaktija/android/LocationsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 132
    invoke-virtual {v1, p1}, Lba/vaktija/android/LocationsAdapter;->setSections(Ljava/util/HashMap;)V

    .line 134
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "selectedLocation"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    sget-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " adapter.count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lba/vaktija/android/LocationsAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    iget v0, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v1, v0}, Lba/vaktija/android/LocationsAdapter;->getPositionForLocationId(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 145
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    new-instance v0, Lba/vaktija/android/wizard/LocationFragment$1;

    invoke-direct {v0, p0}, Lba/vaktija/android/wizard/LocationFragment$1;-><init>(Lba/vaktija/android/wizard/LocationFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 160
    iget-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    iget v0, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v1, v0}, Lba/vaktija/android/LocationsAdapter;->getPositionForLocationId(I)I

    move-result v0

    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;->getHalfScreenHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    sget-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/App;

    iput-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->app:Lba/vaktija/android/App;

    .line 69
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080159

    if-ne p1, v0, :cond_0

    .line 171
    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;->saveSelectedLocation()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget-object p1, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lba/vaktija/android/wizard/LocationFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 82
    sget-object p3, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f0b0030

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0800af

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    const p2, 0x7f080159

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lba/vaktija/android/wizard/LocationFragment;->next:Landroid/widget/Button;

    const p2, 0x7f08015a

    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lba/vaktija/android/wizard/LocationFragment;->prev:Landroid/widget/Button;

    return-object p1
.end method
