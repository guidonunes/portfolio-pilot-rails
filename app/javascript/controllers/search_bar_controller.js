import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-bar"
export default class extends Controller {
  static targets = ["select", "fakeOptions", "input"];

  connect() {
    const list = Array.from(this.selectTarget.children).map((option) => ({
      name: option.innerText,
      id: option.value
    }));

    this.updateOptions(list);
  }

  search(event) {
    const fuseOptions = {
      // isCaseSensitive: false,
      // includeScore: false,
      // shouldSort: true,
      // includeMatches: false,
      // findAllMatches: false,
      // minMatchCharLength: 1,
      // location: 0,
      // threshold: 0.6,
      // distance: 100,
      // useExtendedSearch: false,
      // ignoreLocation: false,
      // ignoreFieldNorm: false,
      // fieldNormWeight: 1,
      keys: [
        "name"
      ]
    };
    const list = Array.from(this.selectTarget.children).map((option) => ({
      name: option.innerText,
      id: option.value
    }));
    const fuse = new Fuse(list, fuseOptions);

    if (event.target.value) {
      const result = fuse.search(event.target.value).map((option) => option.item);
      this.updateOptions(result);
    } else
      this.updateOptions(list);
  }

  showOptions() {
    this.fakeOptionsTarget.classList.remove("d-none")
  }

  hideOptions() {
    this.fakeOptionsTarget.classList.add("d-none")
  }

  updateOptions(list) {
    this.fakeOptionsTarget.innerHTML = "";
    list.slice(0, 7).forEach((option) => {
      if (option.id)
        this.fakeOptionsTarget.insertAdjacentHTML("beforeend", `<li data-value="${option.id}" data-action="click->search-bar#selectOption" class="fake-option">${option.name}</li>`)
    })
  }

  selectOption(event) {
    this.inputTarget.value = event.target.innerText;
    this.selectTarget.value = event.target.dataset.value;
    this.hideOptions();
  }
}
